.class final Lcom/annimon/stream/LongStream$1;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nextLong()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method
