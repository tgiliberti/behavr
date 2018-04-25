class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show]


  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.save
    redirect_to company_path(@company)
  end

  def update
    @company.update(company_params)
    redirect_to company_path(@company)
  end

  def edit
    @company.save
    redirect_to company_path(@company)
  end

  def destroy
    @company.destroy
    redirect_to companies_path
  end

  def index
    @companies = Company.all
  end

  def show
  end

  private

  def company_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:company).permit(:name, :document, :allowed_domains)
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
