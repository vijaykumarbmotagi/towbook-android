.class public Lcom/annimon/stream/operator/IntGenerate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntGenerate.java"


# instance fields
.field private final supplier:Lcom/annimon/stream/function/IntSupplier;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/function/IntSupplier;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/IntGenerate;->supplier:Lcom/annimon/stream/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public nextInt()I
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/IntGenerate;->supplier:Lcom/annimon/stream/function/IntSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/IntSupplier;->getAsInt()I

    move-result v0

    return v0
.end method
