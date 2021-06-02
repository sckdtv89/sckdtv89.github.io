package Model;

import java.io.Serializable;
import java.util.Objects;

public class Staff extends Person implements Serializable {

    private String userName;
    private String department;

    public Staff() {
    }

    public Staff(String userName, String department) {
        this.userName = userName;
        this.department = department;
    }

    public Staff(String userName, String department, String fullName, int birthYear, String homeTown) {
        super(fullName, birthYear, homeTown);
        this.userName = userName;
        this.department = department;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Override
    public String toString() {
        return "Staff{" + "userName=" + userName + ",fullName=" + this.getFullName() + ", birthYear=" + this.getBirthYear() + ", homeTown=" + this.getHomeTown() + ", department=" + department + '}';
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
        final Staff other = (Staff) obj;
        if (!Objects.equals(this.userName, other.userName)) {
            return false;
        }
        if (!Objects.equals(this.department, other.department)) {
            return false;
        }
        return true;
    }
    

}
