.class final Lcom/annimon/stream/Collectors$2;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Supplier<",
        "[D>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/annimon/stream/Collectors$2;->get()[D

    move-result-object v0

    return-object v0
.end method

.method public get()[D
    .registers 2

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [D

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
