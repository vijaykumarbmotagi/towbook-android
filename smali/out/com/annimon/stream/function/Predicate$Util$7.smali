.class final Lcom/annimon/stream/function/Predicate$Util$7;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->notNull()Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Predicate<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
