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
end
