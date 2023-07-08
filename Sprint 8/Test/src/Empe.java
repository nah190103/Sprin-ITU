package emp2;

import etu1875.annotation.Urls;
import etu1875.framework.ModelView;

public class Empe {
    @Urls(url = "emp-myMethod")
    public ModelView maMethode(){
        ModelView mv = new ModelView();
        mv.setView("List.jsp");
        return mv;
    }
}
