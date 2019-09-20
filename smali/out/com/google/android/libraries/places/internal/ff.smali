.class public Lcom/google/android/libraries/places/internal/ff;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/ew;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final b:Landroid/support/v7/app/AppCompatActivity;

.field public final c:Landroid/content/Intent;

.field public final d:Lcom/google/android/libraries/places/internal/fr;

.field public e:Landroid/os/Handler;

.field public f:Lcom/google/android/libraries/places/internal/fp;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/support/v7/widget/RecyclerView;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ImageButton;

.field public m:Landroid/widget/Button;

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;Lcom/google/android/libraries/places/internal/ew;Lcom/google/android/libraries/places/internal/fr;Lcom/google/android/libraries/places/internal/a;)V
    .registers 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    :try_start_3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 132
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->c:Landroid/content/Intent;

    .line 133
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    .line 134
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/ff;->d:Lcom/google/android/libraries/places/internal/fr;

    if-eqz p2, :cond_24

    const-string p3, "session"

    .line 136
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_24

    const-string p3, "session"

    .line 137
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/fp;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    goto :goto_51

    .line 138
    :cond_24
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ff;->c:Landroid/content/Intent;

    const-string p3, "mode"

    .line 139
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 140
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/ff;->c:Landroid/content/Intent;

    const-string p4, "origin"

    .line 141
    invoke-virtual {p3, p4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/places/internal/dv;

    .line 142
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/ff;->c:Landroid/content/Intent;

    const-string v0, "initial_query"

    .line 143
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "Activity Mode must be present in the launch intent."

    .line 144
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Origin must be present in the launch intent."

    .line 145
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/google/android/libraries/places/internal/fp;

    invoke-direct {v0, p3, p2, p4, p5}, Lcom/google/android/libraries/places/internal/fp;-><init>(Lcom/google/android/libraries/places/internal/dv;Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/lang/String;Lcom/google/android/libraries/places/internal/a;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 147
    :goto_51
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ff;->e:Landroid/os/Handler;

    .line 148
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 149
    iget-object p2, p2, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 151
    invoke-virtual {p2}, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_74

    goto :goto_6e

    :pswitch_68
    return-void

    .line 153
    :pswitch_69
    sget p2, Lcom/google/android/libraries/places/R$style;->PlacesAutocompleteThemeFullscreen:I

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AppCompatActivity;->setTheme(I)V
    :try_end_6e
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_6e} :catch_6f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6e} :catch_6f

    :goto_6e
    return-void

    :catch_6f
    move-exception p1

    .line 156
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 157
    throw p1

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_69
        :pswitch_68
    .end packed-switch
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/ff;ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ff;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/ff;Lcom/google/android/libraries/places/api/model/Place;)V
    .registers 2

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ff;->a(Lcom/google/android/libraries/places/api/model/Place;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/ff;)Z
    .registers 1

    .line 290
    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/ff;->n:Z

    return p0
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/ff;Z)Z
    .registers 2

    const/4 p1, 0x0

    .line 291
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/ff;->n:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/libraries/places/internal/ff;)Lcom/google/android/libraries/places/internal/fp;
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 1

    .line 293
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 1

    .line 294
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->l()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_2b

    const-string v0, "Places"

    const/4 v1, 0x6

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Places"

    const-string v1, "Cannot find caller. Did you forget to use startActivityForResult?"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    return-void

    .line 10
    :cond_2b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ew;->b()Lcom/google/android/libraries/places/internal/es;

    move-result-object v0

    sget-object v3, Lcom/google/android/libraries/places/internal/es;->f:Lcom/google/android/libraries/places/internal/es;

    if-ne v0, v3, :cond_42

    const/4 v0, 0x2

    .line 11
    sget-object v1, Lcom/google/android/libraries/places/internal/es;->f:Lcom/google/android/libraries/places/internal/es;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/es;->e:Lcom/google/android/libraries/places/api/model/Place;

    sget-object v2, Lcom/google/android/libraries/places/internal/es;->f:Lcom/google/android/libraries/places/internal/es;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/es;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/ff;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 13
    :cond_42
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 14
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->ordinal()I

    move-result v3

    const/16 v4, 0x10

    packed-switch v3, :pswitch_data_25c

    goto :goto_be

    .line 17
    :pswitch_50
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_main_overlay:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 18
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_back_button:I

    .line 19
    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/google/android/libraries/places/internal/dz;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/dz;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    .line 20
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_overlay_root:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 22
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v6, Lcom/google/android/libraries/places/R$id;->places_autocomplete_overlay_content:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 23
    sget-object v6, Lcom/google/android/libraries/places/internal/ea;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    new-instance v5, Lcom/google/android/libraries/places/internal/eb;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/eb;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_be

    .line 26
    :pswitch_85
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_main_fullscreen:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 27
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_action_bar:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 28
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v6, Lcom/google/android/libraries/places/R$id;->places_autocomplete_back_button:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 29
    sget v5, Lcom/google/android/libraries/places/R$drawable;->quantum_ic_arrow_back_grey600_24:I

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 30
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v5, v3}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 31
    new-instance v5, Lcom/google/android/libraries/places/internal/ec;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/ec;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 33
    :goto_be
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_edit_text:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    .line 34
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_list:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    .line 35
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_error:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->i:Landroid/view/View;

    .line 36
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_error_progress:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->j:Landroid/view/View;

    .line 37
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_error_message:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->k:Landroid/widget/TextView;

    .line 38
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_clear_button:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->l:Landroid/widget/ImageButton;

    .line 39
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_try_again:I

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->m:Landroid/widget/Button;

    .line 40
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 41
    iget-object v5, v5, Lcom/google/android/libraries/places/internal/fp;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 43
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 44
    iput-object v5, v3, Lcom/google/android/libraries/places/internal/el;->g:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 45
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    new-instance v5, Lcom/google/android/libraries/places/internal/fl;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/fl;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    .line 46
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 47
    iput-object v5, v3, Lcom/google/android/libraries/places/internal/el;->f:Lcom/google/android/libraries/places/internal/fl;

    .line 48
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    new-instance v5, Lcom/google/android/libraries/places/internal/ei;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/ei;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    .line 49
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 50
    iput-object v5, v3, Lcom/google/android/libraries/places/internal/el;->e:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    .line 51
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v5, v6, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_14e

    .line 53
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/google/android/libraries/places/internal/fa;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/libraries/places/internal/fa;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 54
    :cond_14e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/google/android/libraries/places/internal/ej;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/ej;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 56
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/fp;->k:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 59
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/libraries/places/internal/ek;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/ek;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/libraries/places/internal/ed;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/ed;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->l:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/libraries/places/internal/ee;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/ee;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->i:Landroid/view/View;

    new-instance v3, Lcom/google/android/libraries/places/internal/ef;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/ef;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->m:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/libraries/places/internal/eg;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/eg;-><init>(Lcom/google/android/libraries/places/internal/ff;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->m()V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->l()V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_264

    goto/16 :goto_257

    .line 101
    :pswitch_1b8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->j()V

    goto/16 :goto_257

    .line 68
    :pswitch_1bd
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->c:Landroid/content/Intent;

    const-string v1, "primary_color"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->c:Landroid/content/Intent;

    const-string v3, "primary_color_dark"

    .line 71
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 72
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1d6

    const/4 v0, 0x0

    :cond_1d6
    if-eqz v0, :cond_257

    if-eqz v1, :cond_257

    .line 75
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 76
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/places/R$color;->places_text_white_alpha_87:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 77
    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/places/R$color;->places_text_black_alpha_87:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 78
    invoke-static {v0, v2, v3}, Lcom/google/android/libraries/places/internal/fi;->a(III)I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 80
    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/places/R$color;->places_text_white_alpha_26:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 81
    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/libraries/places/R$color;->places_text_black_alpha_26:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 82
    invoke-static {v0, v3, v4}, Lcom/google/android/libraries/places/internal/fi;->a(III)I

    move-result v3

    .line 83
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 84
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/fh;->a(Landroid/app/Activity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v5

    if-eqz v5, :cond_23f

    .line 86
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_232

    .line 87
    invoke-virtual {v5, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 89
    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_232

    .line 91
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/fh;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 92
    invoke-virtual {v5, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_23f

    .line 94
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 95
    :cond_23f
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/fh;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 99
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_257
    :goto_257
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->k()V

    return-void

    nop

    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_85
        :pswitch_50
    .end packed-switch

    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_1bd
        :pswitch_1b8
    .end packed-switch
.end method

.method public a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V
    .registers 6
    .param p2    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_c

    const-string v1, "selected_place"

    .line 206
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_c
    const-string p2, "status"

    .line 207
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "session"

    .line 121
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/api/model/Place;)V
    .registers 4

    .line 196
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/libraries/places/internal/ff;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/ff;->p:Z

    return-void
.end method

.method public synthetic a(Lcom/google/android/libraries/places/internal/es;)V
    .registers 6

    .line 233
    :try_start_0
    iget v0, p1, Lcom/google/android/libraries/places/internal/es;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_cc

    const-string p1, "Places"

    goto/16 :goto_b8

    .line 260
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 261
    iget v0, p1, Lcom/google/android/libraries/places/internal/fp;->j:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/libraries/places/internal/fp;->j:I

    .line 262
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v0, Lcom/google/android/libraries/places/R$string;->places_search_error:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/places/internal/ff;->a(Ljava/lang/String;Z)V

    goto/16 :goto_b7

    .line 239
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    iget p1, p1, Lcom/google/android/libraries/places/internal/es;->d:I

    .line 240
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/fp;->d:Z

    .line 241
    iput p1, v0, Lcom/google/android/libraries/places/internal/fp;->g:I

    .line 242
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fj;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 243
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ew;->b()Lcom/google/android/libraries/places/internal/es;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/es;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    move-object p1, v1

    goto :goto_47

    .line 246
    :cond_3d
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    iget p1, p1, Lcom/google/android/libraries/places/internal/es;->d:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 248
    :goto_47
    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/ff;->n:Z

    .line 249
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPrimaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_b7

    .line 252
    :pswitch_62
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 253
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v3, Lcom/google/android/libraries/places/R$string;->places_autocomplete_no_results_for_query:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 255
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/app/AppCompatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/places/internal/ff;->a(Ljava/lang/String;Z)V

    goto :goto_b7

    .line 258
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->m()V

    goto :goto_b7

    .line 264
    :pswitch_88
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 265
    iget v0, p1, Lcom/google/android/libraries/places/internal/fp;->i:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/libraries/places/internal/fp;->i:I

    .line 266
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v0, Lcom/google/android/libraries/places/R$string;->places_search_error:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/places/internal/ff;->a(Ljava/lang/String;Z)V

    goto :goto_b7

    .line 234
    :pswitch_9b
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->m:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b0

    .line 235
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->m:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b7

    .line 237
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->m()V

    goto :goto_b7

    .line 268
    :pswitch_b4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->m()V

    :goto_b7
    return-void

    :goto_b8
    const/4 v0, 0x6

    .line 270
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c6

    const-string p1, "Places"

    const-string v0, "Unknown AutocompleteAdapter state change."

    .line 271
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_c6} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c6} :catch_c7

    :cond_c6
    return-void

    :catch_c7
    move-exception p1

    .line 274
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 275
    throw p1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_9b
        :pswitch_88
        :pswitch_62
        :pswitch_1f
        :pswitch_b
        :pswitch_b4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/places/internal/eh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/libraries/places/internal/eh;-><init>(Lcom/google/android/libraries/places/internal/ff;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic a(I)Z
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 227
    :try_start_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fj;->a(Landroid/content/Context;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_c

    const/4 p1, 0x1

    return p1

    :catch_c
    move-exception p1

    .line 231
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 232
    throw p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/String;Z)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->i:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ff;->m:Landroid/widget/Button;

    if-eqz p2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x8

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fp;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "Places"

    const-string v1, "Already active!"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_10
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/fp;->q:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/fp;->p:J

    return-void
.end method

.method public e()V
    .registers 1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->n()V

    return-void
.end method

.method public f()V
    .registers 8

    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fp;->a()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v0, "Places"

    const-string v1, "Already inactive!"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_10
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/fp;->q:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/libraries/places/internal/fp;->p:J

    sub-long v5, v1, v3

    long-to-int v1, v5

    .line 118
    iget v2, v0, Lcom/google/android/libraries/places/internal/fp;->o:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/libraries/places/internal/fp;->o:I

    const-wide/16 v1, -0x1

    .line 119
    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/fp;->p:J

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 125
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ff;->o:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ff;->p:Z

    if-nez v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/fp;->f:Z

    .line 128
    :cond_15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->d:Lcom/google/android/libraries/places/internal/fr;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/fr;->a(Lcom/google/android/libraries/places/internal/fp;)V

    :cond_1c
    return-void
.end method

.method public i()V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    const/4 v1, 0x1

    .line 160
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/fp;->n:Z

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fj;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public j()V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_45

    .line 164
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 165
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    sget v1, Lcom/google/android/libraries/places/R$id;->places_autocomplete_overlay_root:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 169
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    .line 170
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_38

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    add-int/2addr v2, v3

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 177
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_45
    return-void
.end method

.method public k()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 180
    iget v1, v0, Lcom/google/android/libraries/places/internal/fp;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/fp;->h:I

    .line 181
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->a:Lcom/google/android/libraries/places/internal/ew;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ew;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/eo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/eo;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/eo;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    return-void
.end method

.method public l()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 186
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 187
    :cond_17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public m()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .registers 4

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/ff;->o:Z

    .line 200
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 201
    iput-boolean v0, v1, Lcom/google/android/libraries/places/internal/fp;->e:Z

    .line 202
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/libraries/places/internal/ff;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public synthetic o()V
    .registers 1

    .line 217
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->k()V

    return-void
.end method

.method public synthetic p()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->b:Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fj;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public synthetic q()V
    .registers 3

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->f:Lcom/google/android/libraries/places/internal/fp;

    .line 220
    iget v1, v0, Lcom/google/android/libraries/places/internal/fp;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/fp;->m:I

    .line 221
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ff;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 225
    throw v0
.end method

.method public synthetic r()V
    .registers 2

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->n()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 280
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 281
    throw v0
.end method

.method public synthetic s()Z
    .registers 2

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->n()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    return v0

    :catch_5
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 286
    throw v0
.end method

.method public synthetic t()V
    .registers 1

    .line 287
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ff;->n()V

    return-void
.end method
