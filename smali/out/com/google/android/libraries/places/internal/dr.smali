.class public final synthetic Lcom/google/android/libraries/places/internal/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/widget/AutocompleteFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/AutocompleteFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dr;->a:Lcom/google/android/libraries/places/widget/AutocompleteFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/dr;->a:Lcom/google/android/libraries/places/widget/AutocompleteFragment;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    .line 4
    iget-object p1, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->f:Lcom/google/common/collect/ImmutableList;

    const-string v0, "Place Fields must be set."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Places"

    const/4 v0, 0x6

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "Places"

    const-string v0, "Autocomplete activity cannot be launched until fragment is enabled."

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void

    .line 8
    :cond_24
    new-instance v0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    sget-object v1, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    iget-object v2, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->f:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;)V

    iget-object v1, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setInitialQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/dv;->a:Lcom/google/android/libraries/places/internal/dv;

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->a(Lcom/google/android/libraries/places/internal/dv;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const/16 v1, 0x76d5

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
