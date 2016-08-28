class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  ATTRIBUTES = %w(id area place name info) + 6.times.map{|i|"page_#{i+1}"} + 4.times.map{|i|"msg_#{i+1}"}
  LABELS = %w(id 地域 場所 名称 種別) + 6.times.map{|i|"メニュー#{i+1}"} + 4.times.map{|i|"メッセージ#{i+1}"}
  HEADERS = ATTRIBUTES.inject({}){|memo,a| memo.merge a.to_sym => a}

  # GET /pages
  # GET /pages.json
  def index
    respond_to do |format|
      format.html do
        gon.records = Page.order(:id)
        gon.options = {
          colHeaders: LABELS,
          columns: ATTRIBUTES.map{|a|{data: a}},
          minSpareRows: 1,
          columnSorting: true,
          contextMenu: ["remove_row"]
        }
      end

      format.xlsx do
        @attributes = ATTRIBUTES
        timestamp = Time.zone.now.strftime("%Y%m%d%H%M%S")
        filename = "pages_#{timestamp}.xlsx"
        response.headers['Content-Disposition'] = "attachment; filename=#{filename}"
      end
    end


  end

  def upload
    file = params[:file].path.to_s
    xlsx = Roo::Excelx.new(file)

    Page.transaction do
      xlsx.sheet("pages").each(HEADERS) do |param|
        next if param[:id] == "id"
        Page.find_or_initialize_by(id: param[:id]).update(param)
      end
    end
    redirect_to :pages

    rescue => e
    render json: e.message
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:area, :place, :name, :info, :page_1, :page_2, :page_3, :page_4, :page_5, :page_6, :page_7, :page_8, :msg_1, :msg_2, :msg_3, :msg_4)
    end
end
