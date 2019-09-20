.class public abstract Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "PrimitiveExtIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveExtIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfLong"
.end annotation


# instance fields
.field protected hasNext:Z

.field protected isInit:Z

.field protected next:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->isInit:Z

    if-nez v0, :cond_a

    .line 53
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->nextIteration()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->isInit:Z

    .line 56
    :cond_a
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    return v0
.end method

.method protected abstract nextIteration()V
.end method

.method public nextLong()J
    .registers 3

    .line 61
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->isInit:Z

    if-nez v0, :cond_7

    .line 63
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext()Z

    .line 65
    :cond_7
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    if-nez v0, :cond_11

    .line 66
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 68
    :cond_11
    iget-wide v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 69
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->nextIteration()V

    return-wide v0
.end method
