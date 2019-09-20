.class public Lcom/towbook/mobile/classes/ColorGenerator;
.super Ljava/lang/Object;
.source "ColorGenerator.java"


# static fields
.field public static DEFAULT:Lcom/towbook/mobile/classes/ColorGenerator;


# instance fields
.field private final mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    .line 16
    new-array v0, v0, [Ljava/lang/Integer;

    const v1, -0xe9c9c

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, -0xa7aa7

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, -0x65bc2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, -0x1b39d2

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, -0x98408c

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, -0xa65d42

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, -0xdf6c33

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, -0x529d59

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, -0x7fa87f

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/classes/ColorGenerator;->create(Ljava/util/List;)Lcom/towbook/mobile/classes/ColorGenerator;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/classes/ColorGenerator;->DEFAULT:Lcom/towbook/mobile/classes/ColorGenerator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mColors:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/towbook/mobile/classes/ColorGenerator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/towbook/mobile/classes/ColorGenerator;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/towbook/mobile/classes/ColorGenerator;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/classes/ColorGenerator;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getColor(Ljava/lang/Object;)I
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mColors:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v1, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRandomColor()I
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mColors:Ljava/util/List;

    iget-object v1, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mRandom:Ljava/util/Random;

    iget-object v2, p0, Lcom/towbook/mobile/classes/ColorGenerator;->mColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
