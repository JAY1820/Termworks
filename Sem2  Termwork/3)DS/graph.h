#define MAX_NODES 100

int n, m, isDirected, isWeighted;
int adjMatrix[MAX_NODES][MAX_NODES] = {0};
int adjList[MAX_NODES][MAX_NODES] = {0};

void dfs(int v, int visited[])
{
    visited[v] = 1;
    printf("%d ", v);
    for (int i = 0; i < n; i++)
    {
        if (adjMatrix[v][i] && !visited[i])
        {
            dfs(i, visited);
        }
    }
}

void bfs(int start)
{
    int visited[MAX_NODES] = {0};

    int queue[MAX_NODES], front = 0, rear = 0;
    visited[start] = 1;
    printf("%d ", start);
    queue[rear++] = start;
    while (front < rear)
    {
        int v = queue[front++];
        for (int i = 0; i < n; i++)
        {
            if (adjMatrix[v][i] && !visited[i])
            {
                visited[i] = 1;
                printf("%d ", i);
                queue[rear++] = i;
            }
        }
    }
}


void generateAdjMatrix(FILE *fp) {
    int u, v, w;
    for (int i = 0; i < m; i++) {
        if (isWeighted) {
            fscanf(fp, "%d %d %d", &u, &v, &w);
        } else {
            fscanf(fp, "%d %d", &u, &v);
        }
        adjMatrix[u][v] = 1;
        if (!isDirected) {
            adjMatrix[v][u] = 1;
        }
    }
    displayAdjMatrix();
}


void generateAdjList(FILE *fp) {
    int u, v, w;
    for (int i = 0; i < m; i++) {
        if (isWeighted) {
            fscanf(fp, "%d %d %d", &u, &v, &w);
        } else {
            fscanf(fp, "%d %d", &u, &v);
        }
        adjList[u][v] = 1;
        if (!isDirected) {
            adjList[v][u] = 1;
        }
    }
    displayAdjList();
}

void displayAdjMatrix()
{
    printf("\nAdjacency Matrix:\n");
    printf("   ");
    for (int i = 0; i < n; i++)
    {
        printf("%2d ", i);
    }
    printf("\n");
    for (int i = 0; i < n; i++)
    {
        printf("%2d ", i);
        for (int j = 0; j < n; j++)
        {
            printf("%2d ", adjMatrix[i][j]);
        }
        printf("\n");
    }
}


void displayAdjList()
{
    printf("\nAdjacency List:\n");
    for (int i = 0; i < n; i++)
    {
        printf("%d: ", i);
        for (int j = 0; j < n; j++)
        {
            if (adjList[i][j])
            {
                printf("%d ", j);
            }
        }
        printf("\n");
    }
}


