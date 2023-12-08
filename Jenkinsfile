pipeline
{
    agent
    {
        node
        {
            label 'docker-agent-alpine'
        }
    }
    triggers
    {
        pollSCM '*/5 * * * *'
    }
    stages
    {
        stage('Install Packages') {
            steps {
                script {
                    // Update package information and install packages
                    sh ' apk update && apk add --no-cache jq && apk add --no-cache libxml2-utils &&
                    source bin/exports.sh && source bin/publishAtom.sh >> index.html'
                }
            }
        }
        stage('Build')
        {
            steps
            { 
                echo "Build process started"
                sh '''
                echo "Build process in progress"
                '''
                echo "Build process Ended"
            }   
        }
        stage('Test')
        {
            steps
            { 
                echo "Test process started"
                sh '''
                echo "Test process in progress"
                '''
                echo "Test process Ended"
            }   
        }
        stage('Deployment')
        {
            steps
            { 
                echo "Deployment process started"
                sh '''
                echo "Deployment process in progress"
                '''
                echo "Deployment process Ended"
            }   
        }

    }
}
