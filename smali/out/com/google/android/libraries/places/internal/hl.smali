.class public Lcom/google/android/libraries/places/internal/hl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/libraries/places/internal/jo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/jx<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/ij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/ia;->a()Lcom/google/android/libraries/places/internal/ia;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/ij;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hl;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hl;->a:Lcom/google/android/libraries/places/internal/ij;

    return-void
.end method
