.class public final synthetic Lcom/google/android/libraries/places/internal/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final a:Lcom/android/volley/toolbox/JsonObjectRequest;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/JsonObjectRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/n;->a:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/n;->a:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ft;->a(Lcom/android/volley/toolbox/JsonObjectRequest;)V

    return-void
.end method
