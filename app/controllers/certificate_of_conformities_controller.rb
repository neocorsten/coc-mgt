class CertificateOfConformitiesController < ApplicationController
  # GET /certificate_of_conformities
  # GET /certificate_of_conformities.xml
  def index
    @certificate_of_conformities = CertificateOfConformity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @certificate_of_conformities }
    end
  end

  # GET /certificate_of_conformities/1
  # GET /certificate_of_conformities/1.xml
  def show
    @certificate_of_conformity = CertificateOfConformity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @certificate_of_conformity }
    end
  end

  # GET /certificate_of_conformities/new
  # GET /certificate_of_conformities/new.xml
  def new
    @certificate_of_conformity = CertificateOfConformity.new
    @customer = Customer.all(:order => "name ASC")
    @certificate_type = CertificateType.all
    within_class = CertificateOfConformity.last
    @certificate_of_conformity.generated_id = generate_id(CertificateOfConformity)
    @certificate_of_conformity.generated_string = generate_id_string(CertificateOfConformity)
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @certificate_of_conformity }
    end
  end

  # GET /certificate_of_conformities/1/edit
  def edit
    @certificate_of_conformity = CertificateOfConformity.find(params[:id])
  end

  # POST /certificate_of_conformities
  # POST /certificate_of_conformities.xml
  def create
    @certificate_of_conformity = CertificateOfConformity.new(params[:certificate_of_conformity])
    @customer = Customer.all(:order => "name ASC")
    @certificate_type = CertificateType.all
    @status = Status.all
    @certificate_of_conformity.status_id = @status[0].id
    @certificate_of_conformity.generated_id = generate_id(CertificateOfConformity)
    @certificate_of_conformity.generated_string = generate_id_string(CertificateOfConformity)

    respond_to do |format|
      if @certificate_of_conformity.save
        format.html { redirect_to(@certificate_of_conformity, :notice => 'Certificate of conformity was successfully created.') }
        format.xml  { render :xml => @certificate_of_conformity, :status => :created, :location => @certificate_of_conformity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @certificate_of_conformity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /certificate_of_conformities/1
  # PUT /certificate_of_conformities/1.xml
  def update
    @certificate_of_conformity = CertificateOfConformity.find(params[:id])

    respond_to do |format|
      if @certificate_of_conformity.update_attributes(params[:certificate_of_conformity])
        format.html { redirect_to(@certificate_of_conformity, :notice => 'Certificate of conformity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @certificate_of_conformity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /certificate_of_conformities/1
  # DELETE /certificate_of_conformities/1.xml
  def destroy
    @certificate_of_conformity = CertificateOfConformity.find(params[:id])
    @certificate_of_conformity.destroy

    respond_to do |format|
      format.html { redirect_to(certificate_of_conformities_url) }
      format.xml  { head :ok }
    end
  end
end



def now_yearmonth
  Date.today.strftime("%g%m")
end

def generate_id (within_class)
  if within_class.find(:last)
    last_object_created_date = within_class.find(:last).created_at
    if last_object_created_date.strftime("%g%m") == now_yearmonth()
      new_object_generated_id = within_class.find(:last).generated_id + 1
    else
      new_object_generated_id = 1
    end
  else
    new_object_generated_id = 1
  end
  return new_object_generated_id
end

def generate_id_string (within_class)
  new_object_generated_id_string = now_yearmonth().to_s() + generate_id (within_class).to_s()
end