class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.select { |offer| offer.reservation.nil? || offer.reservation.status == "pending" }
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
