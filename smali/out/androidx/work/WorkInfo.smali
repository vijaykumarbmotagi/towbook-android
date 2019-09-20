.class public final Landroidx/work/WorkInfo;
.super Ljava/lang/Object;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkInfo$State;
    }
.end annotation


# instance fields
.field private mId:Ljava/util/UUID;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOutputData:Landroidx/work/Data;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mState:Landroidx/work/WorkInfo$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTags:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Landroidx/work/Data;Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkInfo$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/work/Data;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/WorkInfo$State;",
            "Landroidx/work/Data;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    .line 50
    iput-object p2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    .line 51
    iput-object p3, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

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

    if-eqz p1, :cond_57

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_57

    .line 97
    :cond_12
    check-cast p1, Landroidx/work/WorkInfo;

    .line 99
    iget-object v2, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    iget-object v3, p1, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_27

    :cond_23
    iget-object v2, p1, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    if-eqz v2, :cond_28

    :goto_27
    return v1

    .line 100
    :cond_28
    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_2f

    return v1

    .line 101
    :cond_2f
    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_42

    :cond_3e
    iget-object v2, p1, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    if-eqz v2, :cond_43

    :goto_42
    return v1

    .line 105
    :cond_43
    iget-object v2, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    if-eqz v2, :cond_50

    iget-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    iget-object p1, p1, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_56

    :cond_50
    iget-object p1, p1, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    if-nez p1, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    return v0

    :cond_57
    :goto_57
    return v1
.end method

.method public getId()Ljava/util/UUID;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getOutputData()Landroidx/work/Data;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    return-object v0
.end method

.method public getState()Landroidx/work/WorkInfo$State;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 110
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v2}, Landroidx/work/Data;->hashCode()I

    move-result v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v2, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    if-eqz v2, :cond_37

    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_37
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
