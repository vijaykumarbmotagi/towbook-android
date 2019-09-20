.class public abstract Lcom/google/android/libraries/places/api/model/OpeningHours;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/OpeningHours$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/libraries/places/api/model/OpeningHours$a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/bg;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/bg;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/OpeningHours$a;->a(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/OpeningHours$a;->b(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getPeriods()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Period;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWeekdayText()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
