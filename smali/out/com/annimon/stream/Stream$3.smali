.class Lcom/annimon/stream/Stream$3;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Stream;->indexed(II)Lcom/annimon/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedFunction<",
        "TT;",
        "Lcom/annimon/stream/IntPair<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/Stream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Stream;)V
    .registers 2

    .line 895
    iput-object p1, p0, Lcom/annimon/stream/Stream$3;->this$0:Lcom/annimon/stream/Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILjava/lang/Object;)Lcom/annimon/stream/IntPair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;"
        }
    .end annotation

    .line 899
    new-instance v0, Lcom/annimon/stream/IntPair;

    invoke-direct {v0, p1, p2}, Lcom/annimon/stream/IntPair;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 895
    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Stream$3;->apply(ILjava/lang/Object;)Lcom/annimon/stream/IntPair;

    move-result-object p1

    return-object p1
.end method
