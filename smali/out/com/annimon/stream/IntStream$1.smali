.class final Lcom/annimon/stream/IntStream$1;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nextInt()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
