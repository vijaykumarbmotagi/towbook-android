.class Lcom/annimon/stream/Stream$6;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Lcom/annimon/stream/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Stream;->toArray()[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IntFunction<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/Stream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Stream;)V
    .registers 2

    .line 1642
    iput-object p1, p0, Lcom/annimon/stream/Stream$6;->this$0:Lcom/annimon/stream/Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .registers 2

    .line 1642
    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream$6;->apply(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)[Ljava/lang/Object;
    .registers 2

    .line 1646
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method
