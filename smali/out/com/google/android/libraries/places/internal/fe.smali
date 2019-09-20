.class final synthetic Lcom/google/android/libraries/places/internal/fe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fd;

.field private final b:Lcom/google/android/libraries/places/internal/el;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/fd;Lcom/google/android/libraries/places/internal/el;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fe;->a:Lcom/google/android/libraries/places/internal/fd;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/libraries/places/internal/el;

    iput p3, p0, Lcom/google/android/libraries/places/internal/fe;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fe;->a:Lcom/google/android/libraries/places/internal/fd;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/libraries/places/internal/el;

    iget v3, p0, Lcom/google/android/libraries/places/internal/fe;->c:I

    const/4 v1, 0x0

    .line 2
    :try_start_7
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/fd;->itemView:Landroid/view/View;

    int-to-long v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/el;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 6
    throw p1
.end method
