.class Lcom/annimon/stream/Stream$1;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Stream;->select(Ljava/lang/Class;)Lcom/annimon/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/Stream;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Stream;Ljava/lang/Class;)V
    .registers 3

    .line 630
    iput-object p1, p0, Lcom/annimon/stream/Stream$1;->this$0:Lcom/annimon/stream/Stream;

    iput-object p2, p0, Lcom/annimon/stream/Stream$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/annimon/stream/Stream$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
