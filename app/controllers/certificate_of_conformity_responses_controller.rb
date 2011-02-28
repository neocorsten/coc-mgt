class CertificateOfConformityResponsesController < ApplicationController
  # GET /certificate_of_conformity_responses
  # GET /certificate_of_conformity_responses.xml
  def index
    @certificate_of_conformity_responses = CertificateOfConformityResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @certificate_of_conformity_responses }
    end
  end

  # GET /certificate_of_conformity_responses/1
  # GET /certificate_of_conformity_responses/1.xml
  def show
    @certificate_of_conformity_response = CertificateOfConformityResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @certificate_of_conformity_response }
    end
  end

  # GET /certificate_of_conformity_responses/new
  # GET /certificate_of_conformity_responses/new.xml
  def new
    @certificate_of_conformity_response = CertificateOfConformityResponse.new
    @certificate_of_conformity = CertificateOfConformity.find(params[:id])
    @certificate_of_conformity_response.certificate_of_conformity_id = @certificate_of_conformity.id

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @certificate_of_conformity_response }
    end
  end

  # GET /certificate_of_conformity_responses/1/edit
  def edit
    @certificate_of_conformity_response = CertificateOfConformityResponse.find(params[:id])
  end

  # POST /certificate_of_conformity_responses
  # POST /certificate_of_conformity_responses.xml
  def create
    @certificate_of_conformity_response = CertificateOfConformityResponse.new(params[:certificate_of_conformity_response])

    # @certificate_of_conformity = CertificateOfConformity.find(params[:certificate_of_conformity_id])
    # @certificate_of_conformity = CertificateOfConformity.find[:id => :certificate_of_conformity_id]
    @certificate_of_conformity.certificate_of_conformity_id.status = 2
    # @certificate_of_conformity.status = 2
    
    
    redirect_to @certificate_of_conformity
    respond_to do |format|
      if @certificate_of_conformity_response.save
        format.html { redirect_to(@certificate_of_conformity_response, :notice => 'Certificate of conformity response was successfully created.') }
        format.xml  { render :xml => @certificate_of_conformity_response, :status => :created, :location => @certificate_of_conformity_response }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @certificate_of_conformity_response.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /certificate_of_conformity_responses/1
  # PUT /certificate_of_conformity_responses/1.xml
  def update
    @certificate_of_conformity_response = CertificateOfConformityResponse.find(params[:id])

    respond_to do |format|
      if @certificate_of_conformity_response.update_attributes(params[:certificate_of_conformity_response])
        format.html { redirect_to(@certificate_of_conformity_response, :notice => 'Certificate of conformity response was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @certificate_of_conformity_response.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /certificate_of_conformity_responses/1
  # DELETE /certificate_of_conformity_responses/1.xml
  def destroy
    @certificate_of_conformity_response = CertificateOfConformityResponse.find(params[:id])
    @certificate_of_conformity_response.destroy

    respond_to do |format|
      format.html { redirect_to(certificate_of_conformity_responses_url) }
      format.xml  { head :ok }
    end
  end
end
