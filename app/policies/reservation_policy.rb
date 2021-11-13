class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    record.user != user
  end

  def destroy?
    record.user == user
  end

  def update?
    true
  end

  def validate?
    record.offer.user == user
  end

  def deny?
    record.offer.user == user
  end
end
