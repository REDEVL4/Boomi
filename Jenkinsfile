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
        stage('Build')
        {
            steps
            { 
                echo "Build process started"
                sh '''
                source bin/exports.sh && source bin/publishAtom.sh >> index.html
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
