.class public Lcom/towbook/mobile/classes/GitRepositoryState;
.super Ljava/lang/Object;
.source "GitRepositoryState.java"


# instance fields
.field private branch:Ljava/lang/String;

.field private buildTime:Ljava/lang/String;

.field private buildUserEmail:Ljava/lang/String;

.field private buildUserName:Ljava/lang/String;

.field private commitId:Ljava/lang/String;

.field private commitIdAbbrev:Ljava/lang/String;

.field private commitMessageFull:Ljava/lang/String;

.field private commitMessageShort:Ljava/lang/String;

.field private commitTime:Ljava/lang/String;

.field private commitUserEmail:Ljava/lang/String;

.field private commitUserName:Ljava/lang/String;

.field private describe:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const-string v0, "git.branch"

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->branch:Ljava/lang/String;

    const-string v0, "git.commit.id.describe"

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->describe:Ljava/lang/String;

    const-string v0, "git.commit.id"

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitId:Ljava/lang/String;

    const-string v0, "git.build.user.name"

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->buildUserName:Ljava/lang/String;

    const-string v0, "git.build.user.email"

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->buildUserEmail:Ljava/lang/String;

    const-string v0, "git.build.time"

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->buildTime:Ljava/lang/String;

    const-string v0, "git.commit.user.name"

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitUserName:Ljava/lang/String;

    const-string v0, "git.commit.user.email"

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitUserEmail:Ljava/lang/String;

    const-string v0, "git.commit.message.short"

    .line 34
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitMessageShort:Ljava/lang/String;

    const-string v0, "git.commit.message.full"

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitMessageFull:Ljava/lang/String;

    const-string v0, "git.commit.time"

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBranch()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildTime()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->buildTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildUserEmail()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->buildUserEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildUserName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->buildUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitId()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitIdAbbrev()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitIdAbbrev:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitMessageFull()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitMessageFull:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitMessageShort()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitMessageShort:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitTime()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitUserEmail()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitUserEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitUserName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->commitUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/towbook/mobile/classes/GitRepositoryState;->describe:Ljava/lang/String;

    return-object v0
.end method
