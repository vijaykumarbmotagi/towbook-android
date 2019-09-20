.class public final Lcom/google/android/libraries/places/internal/ek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ff;->a(Lcom/google/android/libraries/places/internal/ff;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/ff;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/ff;->a(Lcom/google/android/libraries/places/internal/ff;Z)Z

    return-void

    .line 7
    :cond_f
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ff;->b(Lcom/google/android/libraries/places/internal/ff;)Lcom/google/android/libraries/places/internal/fp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget v1, v0, Lcom/google/android/libraries/places/internal/fp;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/fp;->l:I

    .line 9
    iput-object p1, v0, Lcom/google/android/libraries/places/internal/fp;->k:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/ff;->c(Lcom/google/android/libraries/places/internal/ff;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/ff;->d(Lcom/google/android/libraries/places/internal/ff;)V
    :try_end_2b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 15
    throw p1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
