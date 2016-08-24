class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    gon.records = Page.all
    gon.options = {
      colHeaders: [
        "地域",
        "場所",
        "名称",
        "種別",
        "メニュー1",
        "メニュー2",
        "メニュー3",
        "メニュー4",
        "メニュー5",
        "メニュー6",
        "メニュー7",
        "メニュー8",
        "メッセージ1",
        "メッセージ2",
        "メッセージ3",
        "メッセージ4"
      ],
      columns: [
        {data: "area"},
        {data: "place"},
        {data: "name"},
        {data: "info"},
        {data: "page_1"},
        {data: "page_2"},
        {data: "page_3"},
        {data: "page_4"},
        {data: "page_5"},
        {data: "page_6"},
        {data: "page_7"},
        {data: "page_8"},
        {data: "msg_1"},
        {data: "msg_2"},
        {data: "msg_3"},
        {data: "msg_4"}
      ],
      minSpareRows: 1,
      contextMenu: ["remove_row"]
    }

  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
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
