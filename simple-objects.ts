// BAAD

type Game = {
  url: string,
  users: {
    firstUser:{
      movementUser: [];
    };
    secondUser:{
      movements: [];
    }; 
  };
};

// GOOD

type User = {
  movments: Movement[];
}

type Movement = {
  squarePosition: number;
  date: Date;
};

type Room = {
  url: string;
  firstUser: User;
  secondUser: User;
};