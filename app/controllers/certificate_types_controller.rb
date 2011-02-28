class CertificateTypesController < ApplicationController
  # GET /certificate_types
  # GET /certificate_types.xml
  def index
    @certificate_types = CertificateType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @certificate_types }
    end
  end

  # GET /certificate_types/1
  # GET /certificate_types/1.xml
  def show
    @certificate_type = CertificateType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @certificate_type }
    end
  end

  # GET /certificate_types/new
  # GET /certificate_types/new.xml
  def new
    @certificate_type = CertificateType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @certificate_type }
    end
  end

  # GET /certificate_types/1/edit
  def edit
    @certificate_type = CertificateType.find(params[:id])
  end

  # POST /certificate_types
  # POST /certificate_types.xml
  def create
    @certificate_type = CertificateType.new(params[:certificate_type])

    respond_to do |format|
      if @certificate_type.save
        format.html { redirect_to(@certificate_type, :notice => 'Certificate type was successfully created.') }
        format.xml  { render :xml => @certificate_type, :status => :created, :location => @certificate_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @certificate_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /certificate_types/1
  # PUT /certificate_types/1.xml
  def update
    @certificate_type = CertificateType.find(params[:id])

    respond_to do |format|
      if @certificate_type.update_attributes(params[:certificate_type])
        format.html { redirect_to(@certificate_type, :notice => 'Certificate type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @certificate_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /certificate_types/1
  # DELETE /certificate_types/1.xml
  def destroy
    @certificate_type = CertificateType.find(params[:id])
    @certificate_type.destroy

    respond_to do |format|
      format.html { redirect_to(certificate_types_url) }
      format.xml  { head :ok }
    end
  end
end
