.class public Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
.super Lcom/google/android/libraries/places/internal/ez;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/widget/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;)V
    .registers 5
    .param p1    # Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ez;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ez;->a:Landroid/content/Intent;

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ez;->a:Landroid/content/Intent;

    const-string v0, "origin"

    sget-object v1, Lcom/google/android/libraries/places/internal/dv;->b:Lcom/google/android/libraries/places/internal/dv;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ez;->a:Landroid/content/Intent;

    const-string v0, "place_fields"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/dv;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .registers 4
    .param p1    # Lcom/google/android/libraries/places/internal/dv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ez;->a:Landroid/content/Intent;

    const-string v1, "origin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 18
    :try_start_0
    const-class v0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;

    invoke-super {p0, p1, v0}, Lcom/google/android/libraries/places/internal/ez;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 21
    throw p1
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "country"

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/ez;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInitialQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "initial_query"

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/ez;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .registers 3
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "location_bias"

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/ez;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .registers 3
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "location_restriction"

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/ez;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .registers 3
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "types"

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/ez;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method
