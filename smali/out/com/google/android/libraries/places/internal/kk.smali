.class final Lcom/google/android/libraries/places/internal/kk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/kl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/kl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/kk;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/km;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/km;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/kk;->b:Ljava/lang/Iterable;

    return-void
.end method
