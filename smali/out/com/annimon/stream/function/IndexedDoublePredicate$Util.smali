.class public Lcom/annimon/stream/function/IndexedDoublePredicate$Util;
.super Ljava/lang/Object;
.source "IndexedDoublePredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedDoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/IndexedDoublePredicate;
    .registers 2

    .line 33
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/annimon/stream/function/IndexedDoublePredicate$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IndexedDoublePredicate$Util$1;-><init>(Lcom/annimon/stream/function/DoublePredicate;)V

    return-object v0
.end method