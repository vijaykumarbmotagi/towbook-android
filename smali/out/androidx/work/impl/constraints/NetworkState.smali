.class public Landroidx/work/impl/constraints/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# instance fields
.field private mIsConnected:Z

.field private mIsMetered:Z

.field private mIsNotRoaming:Z

.field private mIsValidated:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    .line 33
    iput-boolean p2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    .line 34
    iput-boolean p3, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    .line 35
    iput-boolean p4, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 82
    :cond_12
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    .line 83
    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    if-ne v2, v3, :cond_2d

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    if-ne v2, v3, :cond_2d

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    if-ne v2, v3, :cond_2d

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    iget-boolean p1, p1, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    if-ne v2, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 92
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 93
    :goto_7
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x10

    .line 94
    :cond_d
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    if-eqz v1, :cond_13

    add-int/lit16 v0, v0, 0x100

    .line 95
    :cond_13
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    if-eqz v1, :cond_19

    add-int/lit16 v0, v0, 0x1000

    :cond_19
    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    return v0
.end method

.method public isMetered()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    return v0
.end method

.method public isNotRoaming()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    return v0
.end method

.method public isValidated()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]"

    const/4 v1, 0x4

    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    .line 102
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 101
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
