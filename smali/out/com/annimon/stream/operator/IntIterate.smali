.class public Lcom/annimon/stream/operator/IntIterate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntIterate.java"


# instance fields
.field private current:I

.field private final op:Lcom/annimon/stream/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(ILcom/annimon/stream/function/IntUnaryOperator;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/annimon/stream/operator/IntIterate;->op:Lcom/annimon/stream/function/IntUnaryOperator;

    .line 13
    iput p1, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public nextInt()I
    .registers 4

    .line 23
    iget v0, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    .line 24
    iget-object v1, p0, Lcom/annimon/stream/operator/IntIterate;->op:Lcom/annimon/stream/function/IntUnaryOperator;

    iget v2, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    invoke-interface {v1, v2}, Lcom/annimon/stream/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    iput v1, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    return v0
.end method
