public virtual class VCC_BaseResult 
{
    public boolean success { get; set; }
    public string message { get; set; }

    public VCC_BaseResult(){
        this.success = true;
        this.message = '';
    }
}