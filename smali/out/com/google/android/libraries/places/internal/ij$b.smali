.class public abstract Lcom/google/android/libraries/places/internal/ij$b;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/ij$b<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/ij<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/id;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/id<",
            "Lcom/google/android/libraries/places/internal/ij$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/id;->d:Lcom/google/android/libraries/places/internal/id;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ij$b;->a:Lcom/google/android/libraries/places/internal/id;

    return-void
.end method
