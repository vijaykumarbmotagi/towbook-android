.class Lcom/annimon/stream/Collectors$37$1;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors$37;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Consumer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/Collectors$37;

.field final synthetic val$a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Collectors$37;Ljava/lang/Object;)V
    .registers 3

    .line 803
    iput-object p1, p0, Lcom/annimon/stream/Collectors$37$1;->this$0:Lcom/annimon/stream/Collectors$37;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$37$1;->val$a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/annimon/stream/Collectors$37$1;->this$0:Lcom/annimon/stream/Collectors$37;

    iget-object v0, v0, Lcom/annimon/stream/Collectors$37;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    iget-object v1, p0, Lcom/annimon/stream/Collectors$37$1;->val$a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
