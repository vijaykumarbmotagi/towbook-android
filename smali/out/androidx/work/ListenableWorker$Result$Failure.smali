.class public final Landroidx/work/ListenableWorker$Result$Failure;
.super Landroidx/work/ListenableWorker$Result;
.source "ListenableWorker.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final mOutputData:Landroidx/work/Data;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 412
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {p0, v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>(Landroidx/work/Data;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .registers 2
    .param p1    # Landroidx/work/Data;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 420
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result;-><init>()V

    .line 421
    iput-object p1, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 437
    :cond_11
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 439
    iget-object v0, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, p1}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getOutputData()Landroidx/work/Data;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 444
    const-class v0, Landroidx/work/ListenableWorker$Result$Failure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure {mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
