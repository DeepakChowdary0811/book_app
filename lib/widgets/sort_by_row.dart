// lib/widgets/sort_by_row.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/book_bloc/book_bloc.dart';
import '../blocs/book_bloc/book_event.dart';
import '../blocs/book_bloc/book_state.dart';

class SortByRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Sort by'),
        SizedBox(width: 8),
        ChoiceChip(
          label: Text('Author'),
          selected: context.watch<BookBloc>().state is SortedByAuthorState,
          onSelected: (selected) {
            if (selected) {
              context.read<BookBloc>().add(SortByAuthorEvent());
            }
          },
        ),
        SizedBox(width: 8),
        ChoiceChip(
          label: Text('Title'),
          selected: context.watch<BookBloc>().state is SortedByTitleState,
          onSelected: (selected) {
            if (selected) {
              context.read<BookBloc>().add(SortByTitleEvent());
            }
          },
        ),
      ],
    );
  }
}
