.class public final Landroidx/work/ContentUriTriggers$Trigger;
.super Ljava/lang/Object;
.source "ContentUriTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ContentUriTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trigger"
.end annotation


# instance fields
.field private final mTriggerForDescendants:Z

.field private final mUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/Uri;Z)V
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    .line 89
    iput-boolean p2, p0, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

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

    if-eqz p1, :cond_27

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 111
    :cond_12
    check-cast p1, Landroidx/work/ContentUriTriggers$Trigger;

    .line 113
    iget-boolean v2, p0, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    iget-boolean v3, p1, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    .line 114
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 119
    iget-object v0, p0, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-boolean v1, p0, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public shouldTriggerForDescendants()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    return v0
.end method
