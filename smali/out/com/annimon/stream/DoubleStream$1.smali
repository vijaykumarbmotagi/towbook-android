.class final Lcom/annimon/stream/DoubleStream$1;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nextDouble()D
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method
