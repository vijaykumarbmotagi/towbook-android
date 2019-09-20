.class public Lcom/google/android/libraries/places/widget/AutocompleteFragment;
.super Landroid/app/Fragment;
.source "PG"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field public a:Landroid/widget/EditText;

.field public b:Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/google/android/libraries/places/api/model/TypeFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Lcom/google/common/collect/ImmutableList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private final a()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 54
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_18

    :cond_16
    const/16 v0, 0x8

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/16 v0, 0x76d5

    if-ne p1, v0, :cond_41

    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->i:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    if-nez v0, :cond_21

    const-string v0, "Places"

    const/4 v1, 0x5

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "Places"

    const-string v1, "No PlaceSelectionListener is set. No result will be delivered."

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_21
    const/4 v0, -0x1

    if-ne p2, v0, :cond_35

    .line 62
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getPlaceFromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->i:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V

    .line 64
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    :cond_35
    const/4 v0, 0x2

    if-ne p2, v0, :cond_41

    .line 66
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->i:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V

    .line 68
    :cond_41
    :goto_41
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_44
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 72
    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const/4 p3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "AutocompleteFragment#onCreateView"

    invoke-static {v0, v1, p3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_e

    :catch_9
    const-string v0, "AutocompleteFragment#onCreateView"

    invoke-static {p3, v0, p3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_e} :catch_9

    .line 2
    :goto_e
    :try_start_e
    sget p3, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->g:Landroid/view/View;

    .line 4
    sget p2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_clear_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->h:Landroid/view/View;

    .line 5
    sget p2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    .line 6
    new-instance p2, Lcom/google/android/libraries/places/internal/dr;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/dr;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteFragment;)V

    .line 7
    iget-object p3, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->g:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p3, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->h:Landroid/view/View;

    new-instance p3, Lcom/google/android/libraries/places/internal/ds;

    invoke-direct {p3, p0}, Lcom/google/android/libraries/places/internal/ds;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a()V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_4e
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_4e} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_4e} :catch_52

    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p1

    :catch_52
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 15
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw p1
.end method

.method public onDestroyView()V
    .registers 2

    const/4 v0, 0x0

    .line 16
    :try_start_1
    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->g:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->h:Landroid/view/View;

    .line 18
    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    .line 19
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_a} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 22
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 23
    throw v0
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/gestures/GestureObserver;->getInstance()Lcom/newrelic/agent/android/gestures/GestureObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/gestures/GestureObserver;->onActivityOrFragmentStarted(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/gestures/GestureObserver;->getInstance()Lcom/newrelic/agent/android/gestures/GestureObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/gestures/GestureObserver;->onActivityOrFragmentStopped(Ljava/lang/Object;)V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 34
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 35
    throw p1
.end method

.method public setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)V
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-void
.end method

.method public setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)V
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-void
.end method

.method public setOnPlaceSelectedListener(Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;)V
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->i:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    return-void
.end method

.method public setPlaceFields(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Place Fields must not be null."

    .line 44
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->f:Lcom/google/common/collect/ImmutableList;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_13
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 50
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->a()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 29
    throw p1
.end method

.method public setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)V
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-void
.end method
