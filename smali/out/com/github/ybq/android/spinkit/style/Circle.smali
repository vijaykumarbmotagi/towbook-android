.class public Lcom/github/ybq/android/spinkit/style/Circle;
.super Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/Circle$Dot;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .registers 5

    const/16 v0, 0xc

    .line 18
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/style/Circle$Dot;

    const/4 v1, 0x0

    .line 19
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 20
    new-instance v2, Lcom/github/ybq/android/spinkit/style/Circle$Dot;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;-><init>(Lcom/github/ybq/android/spinkit/style/Circle;)V

    aput-object v2, v0, v1

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1d

    .line 22
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    goto :goto_26

    .line 24
    :cond_1d
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, -0x4b0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/style/Circle$Dot;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    return-object v0
.end method
