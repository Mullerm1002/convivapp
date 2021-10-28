class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.select { |offer| offer.reservation.nil? || "en attente de validation" }
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
