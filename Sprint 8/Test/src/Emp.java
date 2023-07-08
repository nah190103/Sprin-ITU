package emp;

import etu1875.annotation.Urls;
import etu1875.framework.ModelView;

public class Emp {
    public void embaucher(){}

    @Urls(url = "fire-employee")
    public ModelView virer(){
        ModelView mv = new ModelView();
        mv.setView("List.jsp");
        return mv;
    }
}
