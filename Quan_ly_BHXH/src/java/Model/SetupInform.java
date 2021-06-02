package Model;

import Data.*;
import Model.FundPercent;
import Model.SalaryLimit;
import Model.SalaryRegion;
import java.io.Serializable;
import java.util.Objects;

public class SetupInform implements Serializable{

    private FundPercent fundPercent;
    private SalaryLimit salaryLimit;
    private SalaryRegion salaryRegion;

    public SetupInform() {
    }

    public SetupInform(FundPercent fundPercent, SalaryLimit salaryLimit, SalaryRegion salaryRegion) {
        this.fundPercent = fundPercent;
        this.salaryLimit = salaryLimit;
        this.salaryRegion = salaryRegion;
    }

    public FundPercent getFundPercent() {
        return fundPercent;
    }

    public void setFundPercent(FundPercent fundPercent) {
        this.fundPercent = fundPercent;
    }

    public SalaryLimit getSalaryLimit() {
        return salaryLimit;
    }

    public void setSalaryLimit(SalaryLimit salaryLimit) {
        this.salaryLimit = salaryLimit;
    }

    public SalaryRegion getSalaryRegion() {
        return salaryRegion;
    }

    public void setSalaryRegion(SalaryRegion salaryRegion) {
        this.salaryRegion = salaryRegion;
    }

    @Override
    public String toString() {
        return "SetupInform{" + "fundPercent=" + fundPercent + ", salaryLimit=" + salaryLimit + ", salaryRegion=" + salaryRegion + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final SetupInform other = (SetupInform) obj;
        if (!Objects.equals(this.fundPercent, other.fundPercent)) {
            return false;
        }
        if (!Objects.equals(this.salaryLimit, other.salaryLimit)) {
            return false;
        }
        if (!Objects.equals(this.salaryRegion, other.salaryRegion)) {
            return false;
        }
        return true;
    }
    
    
}
