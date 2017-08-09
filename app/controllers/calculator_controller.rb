class CalculatorController < ApplicationController
  def index
    #тут мы считаем нужный нам процент прямо в базе(sql быстрее rails
    #.all[0]  -- использую что-бы не писать first который добавит к запросу не нужный 'ORDER BY "loans"."id" ASC LIMIT 1', он ничего не сломает, но просто не нужен
    #TODO: в запросе потенциальная ошибка 6 месяцев надо заменить на срок займа из базы, но это уже совсем другая формула
    @historical = Loan.select('SUM(total_overdrive)/SUM(sum)/6*12 as base_percent').all[0].base_percent
    @real = 0.3
  end
end
