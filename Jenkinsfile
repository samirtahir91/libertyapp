node("docker") {
    docker.withRegistry("https:://index.docker.io/v1/") {
    
        git url: "https://github.com/samirtahir91/libertyapp", credentialsId: 'git_creds'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "libertyappsample"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
