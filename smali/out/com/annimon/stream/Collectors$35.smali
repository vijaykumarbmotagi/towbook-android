.class final Lcom/annimon/stream/Collectors$35;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->filtering(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "TA;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Lcom/annimon/stream/function/BiConsumer;

.field final synthetic val$predicate:Lcom/annimon/stream/function/Predicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/BiConsumer;)V
    .registers 3

    .line 734
    iput-object p1, p0, Lcom/annimon/stream/Collectors$35;->val$predicate:Lcom/annimon/stream/function/Predicate;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$35;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TT;)V"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/annimon/stream/Collectors$35;->val$predicate:Lcom/annimon/stream/function/Predicate;

    invoke-interface {v0, p2}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 738
    iget-object v0, p0, Lcom/annimon/stream/Collectors$35;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
