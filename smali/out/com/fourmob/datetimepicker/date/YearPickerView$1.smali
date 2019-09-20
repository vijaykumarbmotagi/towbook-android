.class Lcom/fourmob/datetimepicker/date/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

.field final synthetic val$position:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/fourmob/datetimepicker/date/YearPickerView;II)V
    .registers 4

    .line 96
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    iput p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->val$position:I

    iput p3, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->val$position:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setSelectionFromTop(II)V

    .line 99
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->requestLayout()V

    return-void
.end method
