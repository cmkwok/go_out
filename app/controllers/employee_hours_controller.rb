class EmployeeHoursController < ApplicationController
  def index
    @employees = Employee.all.sort_by{|p| p.hours}.reverse
  end
end
