package Model;

import java.io.Serializable;

public class SalaryLimit implements Serializable{
    private double maxSalary;
    private double minSalary;

    public SalaryLimit() {
    }

    public SalaryLimit(double maxSalary, double minSalary) {
        this.maxSalary = maxSalary;
        this.minSalary = minSalary;
    }

    public double getMaxSalary() {
        return maxSalary;
    }

    public void setMaxSalary(double maxSalary) {
        this.maxSalary = maxSalary;
    }

    public double getMinSalary() {
        return minSalary;
    }

    public void setMinSalary(double minSalary) {
        this.minSalary = minSalary;
    }

    @Override
    public String toString() {
        return "SalaryLimit{" + "maxSalary=" + maxSalary + ", minSalary=" + minSalary + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
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
        final SalaryLimit other = (SalaryLimit) obj;
        if (Double.doubleToLongBits(this.maxSalary) != Double.doubleToLongBits(other.maxSalary)) {
            return false;
        }
        if (Double.doubleToLongBits(this.minSalary) != Double.doubleToLongBits(other.minSalary)) {
            return false;
        }
        return true;
    }
    
    
}
