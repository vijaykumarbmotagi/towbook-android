.class public abstract Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "PrimitiveExtIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveExtIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfDouble"
.end annotation


# instance fields
.field protected hasNext:Z

.field protected isInit:Z

.field protected next:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->isInit:Z

    if-nez v0, :cond_a

    .line 85
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->nextIteration()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->isInit:Z

    .line 88
    :cond_a
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->hasNext:Z

    return v0
.end method

.method public nextDouble()D
    .registers 3

    .line 93
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->isInit:Z

    if-nez v0, :cond_7

    .line 95
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->hasNext()Z

    .line 97
    :cond_7
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->hasNext:Z

    if-nez v0, :cond_11

    .line 98
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 100
    :cond_11
    iget-wide v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->next:D

    .line 101
    invoke-virtual {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->nextIteration()V

    return-wide v0
.end method

.method protected abstract nextIteration()V
.end method
