class PaymentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new
      true
      # record.user == user
    end
  end
end
