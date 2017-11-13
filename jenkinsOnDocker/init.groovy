import jenkins.model.Jenkins;
import org.jenkinsci.plugins.workflow.*;

WorkflowJob job = Jenkins.instance.createProject(WorkflowJob, 'my-pipeline')
